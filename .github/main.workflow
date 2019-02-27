workflow "Increment Pixela if Pull Request is opened" {
  on = "pull_request"
  resolves = [
    "Filter PR is closed",
  ]
}



action "Filter PR is closed" {
  uses = "actions/bin/filter@46ffca7632504e61db2d4cb16be1e80f333cb859"
  args = "action 'closed'"
}

