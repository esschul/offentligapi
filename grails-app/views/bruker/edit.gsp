

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Edit Bruker</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Bruker List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Bruker</g:link></span>
        </div>
        <div class="body">
            <h1>Edit Bruker</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${brukerInstance}">
            <div class="errors">
                <g:renderErrors bean="${brukerInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${brukerInstance?.id}" />
                <input type="hidden" name="version" value="${brukerInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="username">Username:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:brukerInstance,field:'username','errors')}">
                                    <input type="text" id="username" name="username" value="${fieldValue(bean:brukerInstance,field:'username')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="userRealName">User Real Name:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:brukerInstance,field:'userRealName','errors')}">
                                    <input type="text" id="userRealName" name="userRealName" value="${fieldValue(bean:brukerInstance,field:'userRealName')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="passwd">Passwd:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:brukerInstance,field:'passwd','errors')}">
                                    <input type="text" id="passwd" name="passwd" value="${fieldValue(bean:brukerInstance,field:'passwd')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="enabled">Enabled:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:brukerInstance,field:'enabled','errors')}">
                                    <g:checkBox name="enabled" value="${brukerInstance?.enabled}" ></g:checkBox>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="authorities">Authorities:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:brukerInstance,field:'authorities','errors')}">
                                    
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="description">Description:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:brukerInstance,field:'description','errors')}">
                                    <input type="text" id="description" name="description" value="${fieldValue(bean:brukerInstance,field:'description')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="email">Email:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:brukerInstance,field:'email','errors')}">
                                    <input type="text" id="email" name="email" value="${fieldValue(bean:brukerInstance,field:'email')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="emailShow">Email Show:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:brukerInstance,field:'emailShow','errors')}">
                                    <g:checkBox name="emailShow" value="${brukerInstance?.emailShow}" ></g:checkBox>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="pass">Pass:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:brukerInstance,field:'pass','errors')}">
                                    <input type="text" name="pass" id="pass" value="${fieldValue(bean:brukerInstance,field:'pass')}" />
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" value="Update" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
