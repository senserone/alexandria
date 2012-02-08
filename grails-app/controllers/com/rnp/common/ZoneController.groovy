package com.rnp.common

import org.springframework.dao.DataIntegrityViolationException

class ZoneController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [zoneInstanceList: Zone.list(params), zoneInstanceTotal: Zone.count()]
    }

    def create() {
        [zoneInstance: new Zone(params)]
    }

    def save() {
        def zoneInstance = new Zone(params)
        if (!zoneInstance.save(flush: true)) {
            render(view: "create", model: [zoneInstance: zoneInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'zone.label', default: 'Zone'), zoneInstance.id])
        redirect(action: "show", id: zoneInstance.id)
    }

    def show() {
        def zoneInstance = Zone.get(params.id)
        if (!zoneInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'zone.label', default: 'Zone'), params.id])
            redirect(action: "list")
            return
        }

        [zoneInstance: zoneInstance]
    }

    def edit() {
        def zoneInstance = Zone.get(params.id)
        if (!zoneInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'zone.label', default: 'Zone'), params.id])
            redirect(action: "list")
            return
        }

        [zoneInstance: zoneInstance]
    }

    def update() {
        def zoneInstance = Zone.get(params.id)
        if (!zoneInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'zone.label', default: 'Zone'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (zoneInstance.version > version) {
                zoneInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'zone.label', default: 'Zone')] as Object[],
                          "Another user has updated this Zone while you were editing")
                render(view: "edit", model: [zoneInstance: zoneInstance])
                return
            }
        }

        zoneInstance.properties = params

        if (!zoneInstance.save(flush: true)) {
            render(view: "edit", model: [zoneInstance: zoneInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'zone.label', default: 'Zone'), zoneInstance.id])
        redirect(action: "show", id: zoneInstance.id)
    }

    def delete() {
        def zoneInstance = Zone.get(params.id)
        if (!zoneInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'zone.label', default: 'Zone'), params.id])
            redirect(action: "list")
            return
        }

        try {
            zoneInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'zone.label', default: 'Zone'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'zone.label', default: 'Zone'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
