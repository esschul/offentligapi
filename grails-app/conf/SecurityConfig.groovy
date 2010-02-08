security {

	// see DefaultSecurityConfig.groovy for all settable/overridable properties

	active = true

	loginUserDomainClass = "Bruker"
	authorityDomainClass = "Rolle"

	useRequestMapDomainClass=false
	
	requestMapString = '''
	      CONVERT_URL_TO_LOWERCASE_BEFORE_COMPARISON
	      PATTERN_TYPE_APACHE_ANT

	      /secure/**=ROLE_ADMIN
	   '''	
}
