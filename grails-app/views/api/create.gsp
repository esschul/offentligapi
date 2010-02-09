

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Opprett Api</title>         
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><g:link class="list" action="list">Api liste</g:link></span>
        </div>
        <div class="body">
            <h1>Opprett Api</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${apiInstance}">
            <div class="errors">
                <g:renderErrors bean="${apiInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                  		          <tr class="prop">
		                                <td valign="top" class="name">
		                                    <label for="dataeier">Dataeier:</label>
		                                </td>
		                                <td valign="top" class="value ${hasErrors(bean:apiInstance,field:'dataeier','errors')}">
                                   <input type="text" id="dataeier" name="dataeier" value="${fieldValue(bean:apiInstance,field:'dataeier')}"/>
		                                </td>
		                     </tr> 
		
							                   <tr class="prop">
					                                <td valign="top" class="name">
					                                    <label for="beskrivelse">Beskrivelse:</label>
					                                </td>
					                                <td valign="top" class="value ${hasErrors(bean:apiInstance,field:'beskrivelse','errors')}">
													<textarea id="beskrivelse" name="beskrivelse" value="${fieldValue(bean:apiInstance,field:'beskrivelse')}"></textarea>
					                                </td>
					                            </tr> 
		
		
				
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="format">Format:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:apiInstance,field:'format','errors')}">
                                    <input type="text" id="format" name="format" value="${fieldValue(bean:apiInstance,field:'format')}"/>
                                </td>
                            </tr> 
                        
									<tr class="prop">
		                                <td valign="top" class="name">
		                                    <label for="begrensninger">Begrensninger/<br/>lisens:</label>
		                                </td>
		                                <td valign="top" class="value ${hasErrors(bean:apiInstance,field:'begrensninger','errors')}">
		                                 <input type="text" id="begrensninger" name="begrensninger" value="${fieldValue(bean:apiInstance,field:'begrensninger')}"/>
		                                </td>
		                            </tr> 

            				<tr class="prop">
                                <td valign="top" class="name">
                                    <label for="pris">Pris:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:apiInstance,field:'pris','errors')}">
                                    <input type="text" id="pris" name="pris" value="${fieldValue(bean:apiInstance,field:'pris')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="url">Url:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:apiInstance,field:'url','errors')}">
                                    <input type="text" id="url" name="url" value="${fieldValue(bean:apiInstance,field:'url')}"/>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><input class="save" type="submit" action="Create" value="Opprett" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
