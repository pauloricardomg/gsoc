# gsoc
XSLT for `Jira -> Ideas List` converter


# How to
1. open JIRA list https://issues.apache.org/jira/issues/?jql=labels%20in%20(gsoc2021)%20AND%20labels%20in%20(mentor%2C%20Mentor)%20and%20resolution%20%3D%20Unresolved%20ORDER%20BY%20project%20DESC
2. Export Issues to XML
3. Run `saxonb-xslt -s:SearchRequest.xml -xsl:preprocess.xslt  > xml.xml && saxonb-xslt -s:xml.xml -xsl:ideas.xslt  > test.html`

