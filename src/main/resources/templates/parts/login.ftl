<#macro login path isRegistrForm>
<form action="${path}" method="post">
    <div class="form-group">
        <label class="col-sm-2 col-form-label"> User Name :  </label>
        <div class="col-sm-6">
            <input type="text" name="username" class="form-control"/>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 col-form-label"> Password:  </label>
        <div class="col-sm-6">
            <input type="password" name="password" class="form-control"/>
        </div>
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <button type="submit" class="btn btn-primary">
        <#if isRegistrForm>
            Create
        <#else>
            Sign In
        </#if>
    </button>
    <#if !isRegistrForm>
        <a href="/registration">Add new user</a>
    </#if>
</form>
</#macro>

<#macro logout>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <button type="submit" class="btn btn-primary">Sign Out</button>
</form>
</#macro>

