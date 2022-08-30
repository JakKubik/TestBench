Feature: Editing books
        Scenario: Edition succeeds
        Given: User is on Library page as Admin, 
        When: User clicks edit icon 
            And: when prompt window appears, 
            And: User edits the title 
            And: User leaves the author as it was, 
            And: confirms with “OK”,
        Then: selected book position is correctly edited according to provided input.

    Scenario: Edition fails - author is empty
        Given: User is on Library page as Admin, 
        When: User clicks edit icon 
            And:  prompt window appears, 
            And: edits the title 
            And: leaves author field empty, 
            And: confirms with “OK”,
        Then: User is notified about incorrect input data 
            And: selected book position is not edited.

    Scenario: Edition fails - title is empty
        Given: User is on Library page as Admin, 
        When: User clicks edit icon 
            And: when prompt window appears, 
            And: edits the author 
            And: leaves title field empty, 
            And: confirms with “OK”,
        Then: User is notified about incorrect input data 
            And: selected book position is not edited.