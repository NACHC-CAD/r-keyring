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
kr_name <- "my_database_keyring"
kr_service <- "my_database"
kr_username <- "my_username"

kb <- keyring::backend_file$new()
kb$keyring_list()

# delete twice to ensure delete for non-exists works
delete_keyring(kr_name)
delete_keyring(kr_name)

# create the keyring
create_keyring(kr_name,kr_service,kr_username)

# delete twice to ensure delete for non-exists works
delete_keyring(kr_name)
delete_keyring(kr_name)

# create the keyring
create_keyring(kr_name,kr_service,kr_username)

# get the password from the keyring
keyring::backend_file$new()$get(
  service = kr_service,
  user = kr_username,
  keyring = kr_name
)



