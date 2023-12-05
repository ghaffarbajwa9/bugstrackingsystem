class BugsController < InheritedResources::Base

  private

    def bug_params
      params.require(:bug).permit(:user_id, :project_id, :title, :deadline, :type, :status)
    end

end
