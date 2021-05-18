module Blog2sHelper
    def choose_new_or_edit
      if action_name == 'new' || action_name == 'create'
        confirm_blog2s_path
      elsif action_name == 'edit'
        blog2_path
      end
    end
  end
  