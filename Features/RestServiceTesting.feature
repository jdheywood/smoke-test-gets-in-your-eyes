@api
Feature: Ruby can call REST based HTTP services

  Scenario: Call headers json test point returns headers
    When I call headers json test through a REST client
    Then I should receive a response with OK code
    And the response JSON contains Host property
