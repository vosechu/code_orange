class IssuesController < ApplicationController
  def index
    render json: Issue.all
    # render json: Issue.all,
    #   except: [:id, :created_at, :updated_at],
    #   include: {
    #     sections: {
    #       except: [:id, :issue_id, :created_at, :updated_at],
    #       include: {
    #         assignments: {
    #           except: [:id, :user_id, :section_id, :created_at, :updated_at],
    #           include: {
    #             user: {
    #               except: [:id, :created_at, :updated_at]
    #             }
    #           }
    #         }
    #       }
    #     }
    #   }
  end
end
