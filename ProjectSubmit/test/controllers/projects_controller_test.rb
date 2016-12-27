require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get projects_url
    assert_response :success
  end

  test "should get new" do
    get new_project_url
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post projects_url, params: { project: { github: @project.github, finished: @project.finished, featured: @project.featured, presentation: @project.presentation, date: @project.date, project_url: @project.project_url, resume: @project.resume,
         grade: @project.grade, title: @project.title, user_id: @project.user_id, subject_id: @project.subject_id} }
    end
    assert_redirected_to project_url(Project.last)
  end

  test "should show project" do
    get project_url(@project)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_url(@project)
    assert_response :success
  end

  test "should update project" do
    patch project_url(@project), params: { project:{ github: @project.github, finished: @project.finished, featured: @project.featured, presentation: @project.presentation, date: @project.date, project_url: @project.project_url, resume: @project.resume,
       grade: @project.grade, title: @project.title, user_id: @project.user_id, subject_id: @project.subject_id } }
    assert_redirected_to project_url(@project)
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete project_url(@project)
    end

    assert_redirected_to projects_url
  end
end
