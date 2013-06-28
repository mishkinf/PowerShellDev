function create_user([string]$name, [string]$username, [string]$email) {
    return [PSCustomObject] @{
        name        = $name
        username    = $username
        email       = $email
    }
}

$GIT_AUTHORS = @{
    "cc"    = create_user "Caleb Clausen" "cclausen" "cclausen@truecar.com";
    "cn"    = create_user "Colman Nady" "colman" "cclausen@truecar.com";
    "dw"    = create_user "Dave Willett" "dwillett" "dwillett@truecar.com";
    "kai"   = create_user "Chris Lichti" "kai" "kai@truecar.com";
    "jm"    = create_user "Jon Mischo" "jmischo" "jmischo@truecar.com";
    "mf"    = create_user "Mishkin Faustini" "mfaustini" "mfaustini@truecar.com";
    "sg"    = create_user "Scott Gonyea" "sgonyea" "sgonyea@truecar.com";
    "spp"   = create_user "Satyajit Phanse" "sphanse" "sphanse@truecar.com";
    "th"    = create_user "Tasha Haggard" "thaggard" "tasha@truecar.com";
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