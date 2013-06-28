# Pairing script used for extreme programming (XP). 

function create_user([string]$name, [string]$username, [string]$email) {
    return [PSCustomObject] @{
        name        = $name
        username    = $username
        email       = $email
    }
}

$GIT_AUTHORS = @{
    "person1"    = create_user "Fake Person Name 1" "username1" "username1@something.com";
    "person2"    = create_user "Fake Person Name 2" "username2" "username2@something.com";
}

function pair {
    $USERS = @()
    write-host ''

    # Check for valid parameters
    if($args.count -eq 0) {
        $possible_keys = $GIT_AUTHORS.keys -join ", "
        write-error "No git authors specified. Please use one or more of the following: " $possible_keys
        return
    }

    for($i=0;$i -lt $args.count;$i++){
        $USERS += $GIT_AUTHORS[$args[$i].ToString()]
    }

    write-host "**** PAIRING USERS: "
    $USERS | %{ write-host $_.name }

    setup_key $USERS[0].username
    config_git $USERS
}

function setup_key($username) {
    rm -Force -recurse C:/.ssh/config
    write-host "'C:\.ssh\keys\$username'"
    $ssh_key_path = "C:\.ssh\keys\$username"
    $ssh_config_file = @"
Host *
    ForwardAgent yes
    User $username
    IdentityFile $ssh_key_path
"@

    $ssh_config_file | out-file C:/.ssh/config -Encoding ASCII

    Add-SshKey $ssh_key_path    
}

function config_git($USERS) {
    $names = ($USERS | %{ $_.name }) -join ", "
    $emails = ($USERS | %{ $_.email }) -join ", "
    
    write-host "NAMES: $names"
    write-host "EMAILS: $emails"
    
    & "C:\Program Files (x86)\Git\bin\git.exe" config --global user.name $names
    & "C:\Program Files (x86)\Git\bin\git.exe" config --global user.email $emails
}