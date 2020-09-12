class PostValidator < ActiveModel::Validator
    def validate(record)
        unless record.title && ["Won't Believe",
            "Secret", "Top [number]", "Guess"].any?{|a|record.title.include?(a)}
            record.errors[:title] << "need to be click-baity"
        end
    end
end