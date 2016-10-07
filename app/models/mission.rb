class Mission < ActiveRecord::Base
  has_many :tasks, dependent: :destroy
  has_many :children, class_name: 'Mission', foreign_key: :parent_id
  belongs_to :parent, class_name: 'Mission', foreign_key: :parent_id
  scope :roots, -> { where(parent_id: nil) }

  def root?
    !parent
  end
end
