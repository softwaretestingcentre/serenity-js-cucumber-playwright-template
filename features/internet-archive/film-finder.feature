Feature: Find films on the internet archive

  Scenario Outline: Fred finds the films in each list of recordings
    Given Fred gets a list of recordings from "<listpage>"
    When Fred parses the recordings greater than 80 minutes long
    Then Fred can create a list of films for "<listpage>"

    Examples:
      | listpage                |
      | Spike-tva               |
      | Talking-Pictures-TV-tva |
    #   | Virgin-1                |
    #   | Viva-tva                |
    #   | Yesterday-Part1-tva     |
    #   | Yesterday-Part2-tva     |
    #   | ZDF-tva                 |
    #   | ITV4-Part1-tva          |
    #   | ITV4-Part2-tva          |
    #   | ITV4-Part3-tva          |
    #   | Channel-5-Part1         |
    #   | Channel-5-Part2         |
    #   | Channel-5-Part3         |
    #   | Channel-5-Part4         |
    #   | Channel-5-Part5         |
    #   | Channel-5-Part6         |
    #   | Channel-5-Part7         |
    #   | Channel-5-Part9         |
    #   | Channel-5-Part10        |
    #   | Channel-5-Part11        |
    #   | Channel-5-Part12        |
    #   | E4-Part1                |
    #   | E4-Part2                |
    #   | E4-Part3                |
    #   | E4-Part4                |
    #   | E4-Part6                |
    #   | FilmFour-Part1          |
    #   | FilmFour-Part2          |
    #   | FilmFour-Part3          |
    #   | Channel-4-Part1         |
    #   | Channel-4-Part2         |
    #   | Channel-4-Part3         |
    #   | Channel-4-Part4         |
    #   | Channel-4-Part5         |
    #   | Channel-4-Part6         |
    #   | Channel-4-Part7         |
    #   | Channel-4-Part8         |
    #   | Channel-4-Part9         |
    #   | Channel-4-Part10        |
    #   | BBC4-Part1-tva          |
    #   | BBC4-Part2-tva          |
    #   | BBC4-Part3-tva          |
    #   | BBC4-Part4-tva          |
    #   | BBC4-Part5-tva          |
