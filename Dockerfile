FROM atlassian/jira-software:8.8.1

MAINTAINER https://github.com/zhangliqiang/jira-software-docker

RUN rm -f /opt/atlassian/jira/atlassian-jira/WEB-INF/lib/atlassian-extras-3.2.jar

RUN echo > /opt/atlassian/jira/atlassian-jira/WEB-INF/classes/templates/plugins/footer/footer.vm

ADD jar/atlassian-extras-3.2.jar /opt/atlassian/jira/atlassian-jira/WEB-INF/lib

ADD jar/mysql-connector-java-5.1.40.jar /opt/atlassian/jira/atlassian-jira/WEB-INF/lib