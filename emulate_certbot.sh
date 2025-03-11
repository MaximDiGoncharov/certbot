echo "
Saving debug log to /var/log/letsencrypt/letsencrypt.log
Renewing an existing certificate for *.laxo.one and laxo.one

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Please deploy a DNS TXT record under the name:

_acme-challenge.laxo.one.

with the following value:

s4Lo5ogMgSIXJhj8ML98SHgCRunLFikWXpUbC1iEfn4

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Press Enter to Continue"

read a

echo "Please deploy a DNS TXT record under the name:

_acme-challenge.laxo.one.

with the following value:

1b7QBRP2QgpfsI1RSCp9Fdxm50WyT7JutdJgTeKvnEQ

(This must be set up in addition to the previous challenges; do not remove,
replace, or undo the previous challenge tasks yet. Note that you might be
asked to create multiple distinct TXT records with the same name. This is
permitted by DNS standards.)

Before continuing, verify the TXT record has been deployed. Depending on the DNS
provider, this may take some time, from a few seconds to multiple minutes. You can
check if it has finished deploying with aid of online tools, such as the Google
Admin Toolbox: https://toolbox.googleapps.com/apps/dig/#TXT/_acme-challenge.laxo.one.
Look for one or more bolded line(s) below the line ';ANSWER'. It should show the
value(s) you've just added.

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Press Enter to Continue"

read a
