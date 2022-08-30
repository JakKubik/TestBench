Scenario: Adding books
    Feature: Creation successful
        Given: User is on Library page as Admin,
            And: no same book already exists,
        When: User clicks “Add book” 
            And: fills title 
            And: author fields 
            And: confirms with “OK”,
        Then: new book appears in database as vacant position

    Feature: Creation failed - empty book title
    Given: User is on Library page as Admin, 
    When: User clicks “Add book” 
        And: fills author field 
        And: leaves title 
        And: empty confirms with “OK”,
    Then: user is notified about incorrect input by highlighting title field as mandatory to be filled. 
        And: new position is not added.

    Feature: Creation failed - empty book author
        Given: User is on Library page as Admin, 
        When: User clicks “Add book” 
            And: fills title field but leaves author empty 
            And: empty confirms with “OK”,
        Then: user is notified about incorrect input, highlighting author field as mandatory to be filled. 
            And: New position is not added.

    Feature: Creation failed - both fields not filled
        Given: User is on Library page as Admin, 
        When: User clicks “Add book”,
            And: user doesn't fill any of the fields 
            And: empty confirms with “OK”,
        Then: user is notified about incorrect input by highlighting both fields as mandatory to be filled. 
            And: new position is not added.