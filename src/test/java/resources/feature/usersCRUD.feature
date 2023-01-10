Feature: Testing different request on the gorest app

  As a user I want to test booking Application

  Scenario Outline: As a user I am creating new users
    When I create a new user by providing the information name "<name>" gender "<gender>" email "<email>" status "<status>"
    And I update user with name "<name>" gender "<gender>" email "<email>" status "<status>"
    And I delete user with name "<name>" gender "<gender>" email "<email>" status "<status>"
    Then I verify the response has status code
    Examples:

      | name     | gender | email                   | status   |
      | Radha1   | Female | radha1@weibo.com        | active   |
      | Kishan   | Male   | Kishan1@paginegialle.it | active   |
      | bhajan   | Male   | bhajan2@elpais.com      | inactive |
      | Hanuman1 | Male   | Hanuman3@wufoo.com      | active   |
