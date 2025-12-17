*** Settings ***
Library    RequestsLibrary
Library    String
Library    SeleniumLibrary
Library    Collections

### RESOURCES ###
Resource    ./variables.resource
Resource    ./frontend.resource

### VARIABLES ###
Variables    ../fixtures/environments.yaml
Variables    ../fixtures/frontend_elements.yaml