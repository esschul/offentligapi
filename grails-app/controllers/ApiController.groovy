

class ApiController {
    
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        params.max = Math.min( params.max ? params.max.toInteger() : 10,  100)
        [ apiInstanceList: Api.list( params ), apiInstanceTotal: Api.count() ]
    }

    def show = {
        def apiInstance = Api.get( params.id )

        if(!apiInstance) {
            flash.message = "Api not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ apiInstance : apiInstance ] }
    }

    def delete = {
        def apiInstance = Api.get( params.id )
        if(apiInstance) {
            try {
                apiInstance.delete(flush:true)
                flash.message = "Api ${params.id} deleted"
                redirect(action:list)
            }
            catch(org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "Api ${params.id} could not be deleted"
                redirect(action:show,id:params.id)
            }
        }
        else {
            flash.message = "Api not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def apiInstance = Api.get( params.id )

        if(!apiInstance) {
            flash.message = "Api not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ apiInstance : apiInstance ]
        }
    }

    def update = {
        def apiInstance = Api.get( params.id )
        if(apiInstance) {
            if(params.version) {
                def version = params.version.toLong()
                if(apiInstance.version > version) {
                    
                    apiInstance.errors.rejectValue("version", "api.optimistic.locking.failure", "Another user has updated this Api while you were editing.")
                    render(view:'edit',model:[apiInstance:apiInstance])
                    return
                }
            }
            apiInstance.properties = params
            if(!apiInstance.hasErrors() && apiInstance.save()) {
                flash.message = "Api ${params.id} updated"
                redirect(action:show,id:apiInstance.id)
            }
            else {
                render(view:'edit',model:[apiInstance:apiInstance])
            }
        }
        else {
            flash.message = "Api not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def create = {
        def apiInstance = new Api()
        apiInstance.properties = params
        return ['apiInstance':apiInstance]
    }

    def save = {
        def apiInstance = new Api(params)
        if(!apiInstance.hasErrors() && apiInstance.save()) {
            flash.message = "Api ${apiInstance.id} created"
            redirect(action:show,id:apiInstance.id)
        }
        else {
            render(view:'create',model:[apiInstance:apiInstance])
        }
    }
}
