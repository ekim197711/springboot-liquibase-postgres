cd $(dirname $0)
docker run --rm \
-v /home/mike/IdeaProjects/influencer/springboot-postgres-liquidbase/script/lbase:/liquibase/changelog \
--network=mynetwork \
liquibase/liquibase \
--url="jdbc:postgresql://mypostgres:5432/mikesdb?currentSchema=public" \
--changeLogFile=/liquibase/changelog/all_changes.xml \
--username=postgres --password=mike --logLevel=debug update