



/**
 * Authority domain class.
 */
class Rolle {

	static hasMany = [people: Bruker]

	/** description */
	String description
	/** ROLE String */
	String authority

	static constraints = {
		authority(blank: false, unique: true)
		description()
	}
}
