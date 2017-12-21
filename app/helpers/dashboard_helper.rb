module DashboardHelper
  def render_options_menu
    case current_user.kind
    when 'student'
      render 'shared/dashboard/menu_student'
    when 'admin'
      render 'shared/dashboard/menu_admin'
    end
  end
end