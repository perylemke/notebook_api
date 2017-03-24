class Contact < ApplicationRecord
  def author
    "Pery Lemke"
  end

  def as_json(options={})
    super(methods: :author, root: true)
  end

end
