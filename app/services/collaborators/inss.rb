class Collaborators::Inss
    attr_reader :errors, :response

    def initialize(salary)
        @salary = salary.gsub(',','.').to_f 
        @response = []
    end

    def prepare_inss
        @response = calc_inss

        @response

    rescue ActiveRecord::RecordNotFound => e
        render json: { errors: 'Calculo indisponivel no momento' }, status: 403
    end

    private

    def calc_inss
        first_salary_track = @salary < 1045.00 ? @salary : 1045.00
        second_salary_track = @salary < 1045.00 ? 0 : @salary > 2089.61 ? 2089.61 - 1045.01 : @salary - 1045.01
        third_salary_track = @salary < 2089.61 ? 0 :  @salary > 3134.40 ? 3134.40 - 2089.61 : @salary - 2089.61
        fourth_salary_track = @salary < 3134.41 ? 0 :  @salary > 6101.06 ? 6101.06 - 3134.41 : @salary - 3134.41
    
        total_inss = (first_salary_track * 0.075).round(2) + 
                     (second_salary_track * 0.09).round(2) + 
                     (third_salary_track * 0.12).round(2) + 
                     (fourth_salary_track * 0.14).round(2) 

        total_inss.to_s.gsub('.',',')
    end
end