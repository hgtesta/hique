
# ssh git@amize.com.br 'bash -s' < local_script.sh

echo "Uploading site to hique-new"
if scp -r _site git@amize.com.br:/webapps/hique-new; then
  echo "Delete hique-old"
  ssh git@amize.com.br "rm -rf /webapps/hique-old"

  echo "Rename hique to hique-old"
  ssh git@amize.com.br "mv /webapps/hique /webapps/hique-old"

  echo "Rename hique-new to hique"
  ssh git@amize.com.br "mv /webapps/hique-new /webapps/hique"
fi
