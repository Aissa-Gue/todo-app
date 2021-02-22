class HomeController < ApplicationController

    def trash_em
        @trash_em = List.where(:completed => true).destroy.all
        redirect_to root_url, notice: 'All Marked Items Were Successfully Deleted'
    end

    def trash_em_all
        @trash_em = List.all.destroy_all
        redirect_to root_url, notice: 'All Items Were Successfully Deleted'
    end
end