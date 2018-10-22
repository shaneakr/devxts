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
      post projects_url, params: { project: { description: @project.description, document: @project.document, goal: @project.goal, num_testers_end: @project.num_testers_end, num_testers_start: @project.num_testers_start, test_age_end: @project.test_age_end, test_age_start: @project.test_age_start, test_country: @project.test_country, test_devise: @project.test_devise, test_end_date: @project.test_end_date, test_gender: @project.test_gender, test_income_end: @project.test_income_end, test_income_start: @project.test_income_start, test_specialities: @project.test_specialities, title: @project.title } }
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
    patch project_url(@project), params: { project: { description: @project.description, document: @project.document, goal: @project.goal, num_testers_end: @project.num_testers_end, num_testers_start: @project.num_testers_start, test_age_end: @project.test_age_end, test_age_start: @project.test_age_start, test_country: @project.test_country, test_devise: @project.test_devise, test_end_date: @project.test_end_date, test_gender: @project.test_gender, test_income_end: @project.test_income_end, test_income_start: @project.test_income_start, test_specialities: @project.test_specialities, title: @project.title } }
    assert_redirected_to project_url(@project)
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete project_url(@project)
    end

    assert_redirected_to projects_url
  end
end
