Feature: Juice Shop has a hidden pages

  Background:
    Given Haxxor goes to the Juice Shop

  Scenario Outline: Haxxor opens the hidden pages
    When Haxxor opens the "<Hidden Page>" at "<url>"
    Then she sees she has solved the "<Hidden Page>" challenge

    Examples:
      | Hidden Page    | url                                |
      | Score Board    | /#/score-board                     |
      | Privacy Policy | /#/privacy-security/privacy-policy |
