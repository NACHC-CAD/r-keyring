# ---
#
# function to create a keyring
#
# ---

# installs
# install.packages("keyring")

# libraries
library(keyring)

# create the key ring
create_keyring <- function(kr_name, kr_service, kr_username) {
  kb <- keyring::backend_file$new()
  kb$keyring_create(kr_name)
  kb$set(kr_service, username = kr_username, keyring = kr_name)
  kb$keyring_lock(kr_name)
}


