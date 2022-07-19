
```bash
mkdir pgpkey
cd pgpkey/

export GNUPGHOME="."

echo "%echo Generating a PGP key for slfi-delivery-toolkit01-dev
Key-Type: RSA
Key-Length: 4096
Name-Real: slfi-delivery-toolkit01-dev
Name-Email: Maxence.Cassar@itesoft.com
Expire-Date: 0
%no-ask-passphrase
%no-protection
%commit" > slfi-delivery-toolkit01-dev.pgp-key.batch

gpg --no-tty --batch --gen-key slfi-delivery-toolkit01-dev.pgp-key.batch
```