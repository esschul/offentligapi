

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Api Detaljevisning</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><g:link class="list" action="list">Api Liste</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">Nytt Api</g:link></span>
        </div>
        <div class="body">
            <h1>Api Detaljevisning</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>

                        <tr class="prop">
                            <td valign="top" class="name">Dataeier:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:apiInstance, field:'dataeier')}</td>
                            
                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name">Beskrivelse:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:apiInstance, field:'beskrivelse')}</td>
                            
                        </tr>
                    
                    
                        <tr class="prop">
                            <td valign="top" class="name">Begrensninger:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:apiInstance, field:'begrensninger')}</td>
                            
                        </tr>
                    
                    
                        <tr class="prop">
                            <td valign="top" class="name">Format:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:apiInstance, field:'format')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Pris:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:apiInstance, field:'pris')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Url:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:apiInstance, field:'url')}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${apiInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="Edit" value="Rediger" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Er du sikker?');" action="Delete" value="Slett" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
