Feature: Juice Shop is susceptible to XSS attacks


  Scenario: Haxxor injects HTML into the search input
    Given Haxxor goes to the Juice Shop
    When she searches for "<iframe src=\"javascript:alert(`xss`)\">"
    Then she sees an alert message containing "xss"
    And she sees she has solved the "DOM XSS" challenge

  Scenario: Haxxor can inject a payload into the page
    Given Haxxor goes to the Juice Shop
    When she searches for "<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/771984076&color=%23ff5500&auto_play=true&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true\"></iframe>"
    Then she sees she has solved the "Bonus Payload" challenge