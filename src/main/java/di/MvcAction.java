package di;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface MvcAction {

	void execute(HttpServletRequest request, HttpServletResponse response);
}
