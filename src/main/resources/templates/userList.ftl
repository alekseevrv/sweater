<#import "parts/common.ftl" as c>

<@c.page>
    <div>Пользователи</div>
    <#list users as user>
        <div>
            <b>${user.username!}</b>
            <span>
                <#list user.roles as role>
                    ${role}<#sep>,
                </#list>
            </span>
            <i><a href="/user/${user.id}">edit</a></i>
        </div>
    <#else>
        No users
    </#list>
</@c.page>
