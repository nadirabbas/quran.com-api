class I18n::Language < ActiveRecord::Base
    extend I18n

    self.table_name = 'language'
    self.primary_key = 'language_code'

    has_many :content_resources, class_name: 'Content::Resource', foreign_key: 'language_code'
    has_many :word_for_word_translations, class_name: 'Quran::WordTranslation', foreign_key: 'language_code'
end
