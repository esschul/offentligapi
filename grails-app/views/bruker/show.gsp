

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Show Bruker</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Bruker List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Bruker</g:link></span>
        </div>
        <div class="body">
            <h1>Show Bruker</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>

                    
                        <tr class="prop">
                            <td valign="top" class="name">Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:brukerInstance, field:'id')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Username:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:brukerInstance, field:'username')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">User Real Name:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:brukerInstance, field:'userRealName')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Passwd:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:brukerInstance, field:'passwd')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Enabled:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:brukerInstance, field:'enabled')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Authorities:</td>
                            
                            <td  valign="top" style="text-align:left;" class="value">
                                <ul>
                                <g:each var="a" in="${brukerInstance.authorities}">
                                    <li><g:link controller="rolle" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Description:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:brukerInstance, field:'description')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Email:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:brukerInstance, field:'email')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Email Show:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:brukerInstance, field:'emailShow')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Pass:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:brukerInstance, field:'pass')}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${brukerInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
