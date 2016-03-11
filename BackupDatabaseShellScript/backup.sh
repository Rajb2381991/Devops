FILE=minime.sql.`date +"%Y%m%d`
DBSERVER=10.0.3.39
DATABASE='checkdb'
USER='root'
PASS='system'
unalias rm     2> /dev/null
rm ${FILE}     2> /dev/null
rm ${FILE}.gz  2> /dev/null
mysqldump --opt --user=${USER} --password=${PASS} ${DATABASE} > ${FILE}
gzip $FILE
echo "${FILE}.gz was created:"
ls -l ${FILE}.gz
