# Demo Salt
This is a demo salt repository.

## Credentials
This salt config includes the setup of the following users with their associated credentials

| User      | Password  |
| --------- | --------- |
| `demo`    | `letmein` |
| `jenkins` | `letmein` |

A SSH key-pair is also needed for each of these users.

Please run `./generate-keys.sh` and check the public keys into version control. The private keys have been gitignored.