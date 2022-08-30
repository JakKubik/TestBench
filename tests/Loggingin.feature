Scenario: Logging-in
    Feature:Log-in Succeeds
        Given: the account exists 
            And: no one is already logged in,
        When: User puts correct credentials (username and passwords) of existing account,
        Then: Log-in attempt succeeds 
        And: User is taken taken into welcome page.

    Feature: Log-in Fails - wrong Username
        Given: the account exists 
            And: no one is already logged in,
        When: User puts correct password 
            And: incorrect username of existing accounts,
        Then: Log-in attempt fails 
            And: User is notified about incorrect credentials.

    Feature: Log-in Fails - wrong password
        Given: the account exists 
            And: no one is already logged in,
        When: User puts correct username 
            And: incorrect password of existing accounts,
        Then: Log-in attempt fails 
            And: User is notified about incorrect credentials.

    Feature: Log-in Fails - user already logged in
        Given: the account exists 
            And: User is already logged in on another device,
        When: User puts correct username 
            And: incorrect password of existing accounts,
        Then: Log-in attempt fails 
            And: User is notified about incorrect credentials.