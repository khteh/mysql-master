FROM mysql:latest
ADD docker-entrypoint.sh /usr/local/bin/custom-docker-entrypoint.sh
ADD mysql.cnf /etc/mysql/conf.d/mysql.cnf
ADD server-id.sh /usr/local/bin/server-id.sh
RUN rm -f /entrypoint.sh
RUN ln -s usr/local/bin/custom-docker-entrypoint.sh /entrypoint.sh # backwards compat
ENTRYPOINT ["custom-docker-entrypoint.sh"]
EXPOSE 3306 33060
CMD ["mysqld"]
