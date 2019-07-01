class AddUserRefToTasks < ActiveRecord::Migration[5.2]
  def change
    # 下記の命令によって、usersテーブルを参照するためのuser_idという
    # 外部キーが整数型(integer)でtasksテーブルに作られる。
    add_reference :tasks, :user, foreign_key: true
    # add_column :tasks, :user_id, :integer
  end
end
