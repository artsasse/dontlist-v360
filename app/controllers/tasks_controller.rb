class TasksController < ApplicationController
    def create
        @list = List.find(params[:list_id])
        @task = @list.tasks.build(task_params)
        if @task.save
            redirect_to list_path(@list)
        else 
            # "lists/show" é o path para o template, não a URL
            render "lists/show", status: :unprocessable_entity
        end 
    end

    def edit
        @list = List.find(params[:list_id])
        @task = @list.tasks.find(params[:id])
    end

    def update
        @list = List.find(params[:list_id])
        @task = @list.tasks.find(params[:id])

        if @task.update(task_params)
            redirect_to @list
        else
            head :unprocessable_entity
        end
    end

    def destroy
        @list = List.find(params[:list_id])
        @task = @list.tasks.find(params[:id])
        @task.destroy

        redirect_to list_path(@list), status: :see_other
    end

    private

    def task_params
        params.require(:task).permit(:title, :checked)
    end
end
