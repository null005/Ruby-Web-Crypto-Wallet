module ApplicationHelper

    def locale
        I18n.locale == :en ? "Ingles Americano" : "Portugues Brasileiro"          
    end

    def data_br(data_us)
         data_us.strftime("%d/%m/%Y")
    end

    def ambiente_rails
        if Rails.env.development?
            "Desenvolvimento"
        elsif Rails.env.production?
            "Produçao"
        else
            "Teste"
        end
    end
end
