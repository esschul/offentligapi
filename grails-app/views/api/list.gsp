

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Api List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New Api</g:link></span>
        </div>
        <div class="body">
            <h1>Api List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="begrensninger" title="Begrensninger" />
                        
                   	        <g:sortableColumn property="beskrivelse" title="Beskrivelse" />
                        
                   	        <g:sortableColumn property="dataeier" title="Dataeier" />
                        
                   	        <g:sortableColumn property="format" title="Format" />
                        
                   	        <g:sortableColumn property="pris" title="Pris" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${apiInstanceList}" status="i" var="apiInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${apiInstance.id}">${fieldValue(bean:apiInstance, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:apiInstance, field:'begrensninger')}</td>
                        
                            <td>${fieldValue(bean:apiInstance, field:'beskrivelse')}</td>
                        
                            <td>${fieldValue(bean:apiInstance, field:'dataeier')}</td>
                        
                            <td>${fieldValue(bean:apiInstance, field:'format')}</td>
                        
                            <td>${fieldValue(bean:apiInstance, field:'pris')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${apiInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
