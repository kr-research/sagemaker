#!/usr/bin/env bash

RED='\e[38;5;196m'
GREEN='\e[38;5;76m'
YELLOW='\e[38;5;220m'
BLUE='\e[38;5;81m'
PURPLE='\e[38;5;165m'
CYAN='\e[38;5;81m'
WHITE='\e[38;5;255m'
COLOR_OFF='\e[0m'

function success {
  echo -e "${GREEN} Sucess ($(date +'%Y-%m-%dT%H:%M:%S%z')): $1 ${COLOR_OFF}\n"
}

function error {
  echo -e "${RED} Error ($(date +'%Y-%m-%dT%H:%M:%S%z')): $* ${COLOR_OFF}\n" >&2
}

function summary {
  echo -e "${BLUE} $1 ${COLOR_OFF}\n"
}

function section {
  echo -e "${YELLOW} $1 ${COLOR_OFF}"
}

function options {
  echo -e "${WHITE} $1 ${COLOR_OFF}"
}

function command {
  echo -e "${CYAN} $1 ${COLOR_OFF}\n"
}

function quote {
  echo -e "${PURPLE} $1 ${COLOR_OFF}"
}
