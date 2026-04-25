Feature: Instagram Search

  Scenario Outline: Search for content on Instagram
    Given the user searches for "<searchTerm>"
    When the user clicks on the second image result
    Then the search results should display posts related to "<searchTerm>"

    Examples:
      | searchTerm                         |
      | ancient civilizations              |
      | history of the ancient world       |
      | archaeological discoveries         |
      | prehistoric cultures               |
      | ancient rituals                    |
      | Celtic gods and goddesses          |
      | Celtic legends                     |
      | Celtic tribes                      |
      | Celtic art and symbolism           |
      | Druids and Celtic spirituality     |
      | Celtic festivals                   |
      | Iron Age Britain                   |
      | native British trees               |
      | British wildlife                   |
      | woodland ecology UK                |
      | folklore of British animals        |
      | ancient British forests            |
      | conservation of British species    |
      | classical painting techniques      |
      | Renaissance art                    |
      | famous painters                    |
      | art history                        |
      | museum collections                 |
      | art movements                      |
      | contemporary artists               |
      | abstract art                       |
      | modern sculpture                   |
      | art installations                  |
      | street art                         |
      | modern art galleries               |
      | mindfulness meditation             |
      | guided meditation                  |
      | meditation techniques              |
      | benefits of meditation             |
      | meditation for stress relief       |
      | shamanic practices                 |
      | energy healing                     |
      | soul retrieval                     |
      | plant spirit medicine              |
      | shamanic rituals                   |
      | healing ceremonies                 |
      | shamanic journey techniques        |
      | spirit animal guides               |
      | drumming for journeying            |
      | altered states of consciousness    |
      | visionary experiences              |
      | Aztec mythology                    |
      | Maya civilization                  |
      | Inca history                       |
      | Olmec culture                      |
      | pre-Columbian art                  |
      | South American myths               |
      | English fairy tales                |
      | Scottish legends                   |
      | Welsh myths                        |
      | folklore of the British Isles      |
      | Arthurian legends                  |
      | local ghost stories                |
      | traditional British folk songs     |
      | folk music instruments             |
      | folk festivals UK                  |
      | history of folk music              |
      | famous folk musicians              |
      | megalithic monuments               |
      | stone circles UK                   |
      | ancient standing stones            |
      | stone alignments                   |
      | archaeological sites               |
      | Avebury stone circle               |
      | Stonehenge                         |
      | stone circle rituals               |
      | prehistoric stone circles          |
      | stone circle locations             |
      | sacred landscapes                  |
      | pilgrimage sites UK                |
      | ancient holy wells                 |
      | spiritual places Britain           |
      | ley lines                          |
      | ancient burial mounds              |
      | barrows and tumuli                 |
      | prehistoric graves                 |
      | burial mound excavations           |
      | funerary practices ancient Britain |
