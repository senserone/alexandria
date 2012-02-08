package com.rnp.common

import org.springframework.dao.DataIntegrityViolationException

class BrandController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [brandInstanceList: Brand.list(params), brandInstanceTotal: Brand.count()]
    }

    def create() {
        [brandInstance: new Brand(params)]
    }

    def save() {
        def brandInstance = new Brand(params)
        if (!brandInstance.save(flush: true)) {
            render(view: "create", model: [brandInstance: brandInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'brand.label', default: 'Brand'), brandInstance.id])
        redirect(action: "show", id: brandInstance.id)
    }

    def show() {
        def brandInstance = Brand.get(params.id)
        if (!brandInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'brand.label', default: 'Brand'), params.id])
            redirect(action: "list")
            return
        }

        [brandInstance: brandInstance]
    }

    def edit() {
        def brandInstance = Brand.get(params.id)
        if (!brandInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'brand.label', default: 'Brand'), params.id])
            redirect(action: "list")
            return
        }

        [brandInstance: brandInstance]
    }

    def update() {
        def brandInstance = Brand.get(params.id)
        if (!brandInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'brand.label', default: 'Brand'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (brandInstance.version > version) {
                brandInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'brand.label', default: 'Brand')] as Object[],
                          "Another user has updated this Brand while you were editing")
                render(view: "edit", model: [brandInstance: brandInstance])
                return
            }
        }

        brandInstance.properties = params

        if (!brandInstance.save(flush: true)) {
            render(view: "edit", model: [brandInstance: brandInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'brand.label', default: 'Brand'), brandInstance.id])
        redirect(action: "show", id: brandInstance.id)
    }

    def delete() {
        def brandInstance = Brand.get(params.id)
        if (!brandInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'brand.label', default: 'Brand'), params.id])
            redirect(action: "list")
            return
        }

        try {
            brandInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'brand.label', default: 'Brand'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'brand.label', default: 'Brand'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
