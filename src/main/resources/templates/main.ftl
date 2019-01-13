<#import "parts/common.ftl" as c>

<@c.page>
    <div class="form-row">
        <div class="form-group col-md-6">
            <form method="get" action="main" class="form-inline">
                <input type="text" name="filter" class="form-control" value="${filter!}">
                <button type="submit" class="btn btn-primary ml-2">Найти</button>
            </form>
        </div>
    </div>

    <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"
       aria-controls="collapseExample">
        Add New Message
    </a>

    <div class="collapse" id="collapseExample">
        <div class="form-group mt-3">
            <form method="post" action="main">
                <div class="form-group">
                    <input type="text" name="text" class="form-control" placeholder="Введите сообщение">
                </div>
                <div class="form-group">
                    <input type="text" name="tag" class="form-control" placeholder="Тэг">
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
                <button type="submit" class="btn btn-primary">Добавить</button>
            </form>
        </div>
    </div>

    <div class="card-columns">
        <#list messages as message>
            <div class="card my-3">
                <div class="m-2">
                    <span>${message.text!}</span>
                    <i>${message.tag!}</i>
                </div>
                <div class="card-footer text-muted">
                    ${(message.author.username)!"&lt;none&gt;"}
                </div>
            </div>
        <#else>
            No message
        </#list>
    </div>

</@c.page>
