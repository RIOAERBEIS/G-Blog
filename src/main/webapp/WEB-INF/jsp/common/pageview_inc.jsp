<%@ page language="java" pageEncoding="UTF-8"%>
<font color="black">
    当前页:第${pageView.currentpage}页 | 总记录数:${pageView.totalrecord}条 | 每页显示:${pageView.recordPerPage}条 | 总页数:${pageView.totalpage}页
</font>
<br/>
<c:forEach begin="${pageView.pageindex.startindex}" end="${pageView.pageindex.endindex}" var="wp">
    <c:if test="${pageView.currentpage==wp}"><b><font color="gray">第${wp}页</font></b></c:if>
    <c:if test="${pageView.currentpage!=wp}"><a href="javascript:topage('${wp}')" class="a03">第${wp}页</a></c:if>
</c:forEach>