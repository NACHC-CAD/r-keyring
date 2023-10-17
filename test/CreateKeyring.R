# ---
#
# example script to create/delete a keyring
#
# ---

# installs
# install.packages("keyring")

# libraries
library(keyring)

# source 
source("CreateKeyRing.R")
source("DeleteKeyRing.R")

# variables
kr_name <- "databricks_keyring"
kr_service <- "production"
kr_username <- "token"

kb <- keyring::backend_file$new()

# list existing keyrings (before)
kb$keyring_list()

# delete existing
delete_keyring(kr_name)
create_keyring(kr_name,kr_service,kr_username)

# list existing keyrings (after)
kb$keyring_list()

# get the token
keyring::backend_file$new()$get(
  service = kr_service,
  user = kr_username,
  keyring = kr_name
)


