<p>-------List of all registered users --------</p>
<g:set var="userList" value="${list}"></g:set>
<table>
    <tr>
        <td>Name</td>
        <td>email</td>
    </tr>
    <g:each var="user" in="${userList}">
        <tr>
            <td>${user.firstName} ${user.lastName}</td>
            <td>${user.email}</td>

            <td>
                <g:link action="delete" controller="user" id="${user.id}">
                    <span><i class="glyphicon glyphicon-trash"></i></span>
                </g:link>
            </td>
        </tr>
    </g:each>
</table>

<g:paginate next="Forward" prev="Back" max="2"
            maxsteps="2" controller="login" action="login"
            total="${userList}"/>
