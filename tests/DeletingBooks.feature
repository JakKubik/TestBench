Feature: Deleting books
    Scenario: Deletion succeeds 
        Given User is on Library page as Admin, 
        When User clicks trash can icon 
            And prompt window appears 
            And user confirms with “OK”,
        Then book position is removed from list of positions 

    Scenario: Deletion is cancelled
        Given User is on Library page as Admin, 
        When User clicks trash can icon 
            And prompt window appears 
            And user cancels the action with “Cancel”,
        Then book position is not removed from list of positions 