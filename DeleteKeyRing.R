# ---
#
# function to delete a keyring
#
# ---

# installs
# install.packages("keyring")

# libraries
library(keyring)

# delete the key ring
delete_keyring <- function(key_name) {
  lst <- kb$keyring_list()
  for (i in 1:nrow(lst)) {
    if (lst$keyring[i] == key_name) {
      kb$keyring_delete(keyring = kr_name)
      break
    }
  }
}



